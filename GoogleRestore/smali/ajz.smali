.class public final Lajz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lacw;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lajz;->a:Lacw;

    iput-object p1, p0, Lajz;->b:Landroid/content/Context;

    return-void
.end method
