.class final Lebs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lefx;


# direct methods
.method public constructor <init>(Lefx;)V
    .locals 0

    iput-object p1, p0, Lebs;->a:Lefx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lebs;->a:Lefx;

    .line 1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lefx;->a(Z)V

    return-void
.end method
