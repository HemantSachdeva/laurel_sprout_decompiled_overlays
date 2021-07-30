.class final Lbgb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbgf;


# direct methods
.method public constructor <init>(Lbgf;)V
    .locals 0

    iput-object p1, p0, Lbgb;->a:Lbgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbgb;->a:Lbgf;

    .line 1
    invoke-virtual {v0}, Lbgf;->b()V

    return-void
.end method
