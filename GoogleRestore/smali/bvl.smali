.class final Lbvl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbuz;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lbuz;

    invoke-direct {v0}, Lbuz;-><init>()V

    iput-object v0, p0, Lbvl;->b:Lbuz;

    iput-object p1, p0, Lbvl;->a:Landroid/content/Context;

    return-void
.end method
