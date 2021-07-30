.class final Lvn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lvp;


# direct methods
.method public constructor <init>(Lvp;)V
    .locals 0

    iput-object p1, p0, Lvn;->a:Lvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvn;->a:Lvp;

    .line 1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvp;->b(I)V

    return-void
.end method
