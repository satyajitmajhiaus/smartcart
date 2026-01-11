import { PiSpinnerGap } from "react-icons/pi";
import "./loadingSpinner.css";

export default function LoadingSpinner() {
  return (
    <div className="loading-spinner-container">
      <PiSpinnerGap className="spinner" size={40} />
    </div>
  );
}
