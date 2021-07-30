.class public final Ldcn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldbb;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ldbb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Ldbb;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldcn;->b:Landroid/content/Context;

    iput-object p1, p0, Ldcn;->a:Ldbb;

    return-void
.end method
