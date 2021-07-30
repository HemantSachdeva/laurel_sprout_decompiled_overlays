.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field final synthetic a:Lwy;


# direct methods
.method public constructor <init>(Lwy;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 0

    .line 1
    sget-object p1, Lh;->b:Lh;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lwy;

    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Lwy;->d:Z

    return-void

    :cond_0
    sget-object p1, Lh;->e:Lh;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lwy;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method
