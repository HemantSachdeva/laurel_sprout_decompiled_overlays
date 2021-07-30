.class final Lecu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lecv;


# direct methods
.method public constructor <init>(Lecv;Z)V
    .locals 0

    iput-object p1, p0, Lecu;->b:Lecv;

    iput-boolean p2, p0, Lecu;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lecu;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecu;->b:Lecv;

    iget-object v0, v0, Lecv;->a:Lecy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lecy;->p:Z

    iget-wide v1, v0, Lecy;->m:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v0, v0, Lecy;->o:Lcrf;

    .line 1
    invoke-virtual {v0}, Lcrf;->b()V

    invoke-virtual {v0}, Lcrf;->c()V

    :cond_0
    iget-object v0, p0, Lecu;->b:Lecv;

    iget-object v0, v0, Lecv;->a:Lecy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lecy;->r:Z

    return-void
.end method
