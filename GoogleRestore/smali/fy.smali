.class final Lfy;
.super Lgc;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 1
    const v0, 0x7f0a0197

    const/16 v1, 0x8

    const/16 v2, 0x1c

    invoke-direct {p0, v0, p1, v1, v2}, Lgc;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
