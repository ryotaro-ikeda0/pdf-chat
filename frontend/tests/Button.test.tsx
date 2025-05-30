import { render, screen } from '@testing-library/react'
import { describe, it, expect } from 'vitest'
import { Button } from '../src/components/Button'

describe('Button', () => {
  it('renders', () => {
    render(<Button />)
    expect(screen.getByRole('button', { name: /click me/i })).toBeInTheDocument()
  })
})
