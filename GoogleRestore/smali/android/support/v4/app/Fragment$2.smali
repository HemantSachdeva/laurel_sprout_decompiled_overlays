.class public Landroid/support/v4/app/Fragment$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field final synthetic a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$2;->a:Lba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 0

    .line 1
    sget-object p1, Lh;->e:Lh;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/Fragment$2;->a:Lba;

    iget-object p1, p1, Lba;->L:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
