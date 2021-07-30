.class final Lpk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpp;


# direct methods
.method public constructor <init>(Lpp;)V
    .locals 0

    iput-object p1, p0, Lpk;->a:Lpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lpk;->a:Lpp;

    .line 1
    invoke-virtual {v0}, Lpp;->h()V

    return-void
.end method
