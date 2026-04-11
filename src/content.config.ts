import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const projects = defineCollection({
  loader: glob({ pattern: '**/*.md', base: './src/content/projects' }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    category: z.string(),
    status: z.enum(['complete', 'wip', 'archived']),
    tags: z.array(z.string()),
    image: z.string().optional(),
    versions: z.array(z.object({
      tag: z.string(),
      date: z.string(),
      title: z.string(),
      note: z.string().optional(),
    })).optional(),
  }),
});

export const collections = { projects };