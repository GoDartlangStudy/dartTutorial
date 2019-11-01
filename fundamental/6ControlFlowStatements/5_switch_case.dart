void main() {
  // default 수행
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      break;
    case 'PENDING':
      executePending();
      break;
    case 'APPROVED':
      executeApproved();
      break;
    case 'DENIED':
      executeDenied();
      break;
    case 'OPEN':
      executeOpen();
      break;
    default:
      executeUnknown();
  }


  command = 'CLOSED';
  switch (command) {
    case 'CLOSED': // Empty case falls through.
    case 'NOW_CLOSED':
    // CLOSED 또는 NOW_CLOSED 인 경우 아래 두 구문을 수행
      executeNowClosed();
      break;
  }

  // break 생략하면 에러
  command = 'OPEN';
  switch (command) {
    //case 'OPEN':
      //executeOpen();
  // ERROR: Missing break

    case 'CLOSED':
      executeClosed();
      break;
  }


  // label을 사용하여 흐름을 제어할 수 있다.
  command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      continue nowClosed;
  // nowClosed 라벨로 이동하여 실행을 계속한다

    nowClosed:
    case 'NOW_CLOSED':
    // Runs for both CLOSED and NOW_CLOSED.
      executeNowClosed();
      break;
  }
}

void executeUnknown() {
}

void executeNowClosed() {
}

void executeDenied() {
}

void executeOpen() {
}

void executePending() {
}

void executeClosed() {
}

void executeApproved() {
}
