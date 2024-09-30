import { NextResponse } from 'next/server';

export const GET = () => {
  return new NextResponse('ok', { status: 200, headers: { 'Content-Type': 'text/plain', 'Cache-Control': 'no-store' } });
}
