.class public Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field final synthetic a:Lsi;


# direct methods
.method public constructor <init>(Lsi;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 0

    .line 1
    sget-object p1, Lh;->e:Lh;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lsi;

    .line 2
    invoke-virtual {p1}, Lsi;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_1
    return-void
.end method
