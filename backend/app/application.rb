class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    # if req.path.match(/test/) 
    #   return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    if req.path.match("/patient/:id") && req.get?
      
      id = parseInt(req.params.id)
      patient = Patient.find_by(id: id)

      physicians = patient.physicians
      appointments = patient.appointments
      
      appointment_ids = patient.appointments.ids
      appt_prescriptions = appointment_ids.map do |id| 
        AppointmentsPrescription.where(appointment_id: id)
      end

      number_of_prescriptions = appt_prescriptions.size
      prescription_one = appt_prescriptions[0][0].prescription
      prescription_two = appt_prescriptions[1][0].prescription

      return [200, { 'Content-Type' => 'application/json' }, [ {:patient => patient, :physicians => physicians, :appointments => appointments}.to_json ]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
