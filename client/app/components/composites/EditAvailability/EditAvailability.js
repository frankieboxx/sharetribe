import r, { div } from 'r-dom';
import { DayPicker } from 'react-dates';

import 'react-dates/css/styles.scss';
import css from './EditAvailability.css';

const EditAvailability = (props) => {

  const pickerProps = {
    id: 'EditAvailability_picker',
    enableOutsideDays: true,
  };

  return div(
    { className: css.root },
    [
      r(DayPicker, pickerProps),
    ]
  );
};

EditAvailability.propTypes = {

};

export default EditAvailability;
