def convert_temp(temperature, input_scale:, output_scale: 'celsius')
    case input_scale
    when 'celsius'
      case output_scale
      when 'fahrenheit'
        temperature * 9/5.0 + 32
      when 'kelvin'
        temperature + 273.15
      else
        temperature
      end
    when 'fahrenheit'
      case output_scale
      when 'celsius'
        (temperature - 32) * 5/9.0
      when 'kelvin'
        (temperature + 459.67) * 5/9.0
      else
        temperature
      end
    when 'kelvin'
      case output_scale
      when 'celsius'
        temperature - 273.15
      when 'fahrenheit'
        temperature * 9/5.0 - 459.67
      else
        temperature
      end
    else
      temperature
    end
  end
  