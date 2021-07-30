.class final Legl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Legm;


# direct methods
.method public constructor <init>(Legm;)V
    .locals 0

    iput-object p1, p0, Legl;->a:Legm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Legl;->a:Legm;

    iget-object v0, v0, Legm;->a:Ldxd;

    .line 1
    invoke-virtual {v0}, Ldxd;->b()V

    return-void
.end method
