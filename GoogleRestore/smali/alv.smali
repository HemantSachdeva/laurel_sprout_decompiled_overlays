.class public abstract Lalv;
.super Lba;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/setupdesign/GlifLayout;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lba;->a(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lcom/google/android/setupdesign/GlifLayout;Ljava/lang/CharSequence;)V
    .locals 1

    const-class v0, Lcnf;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcnf;

    invoke-virtual {v0, p2}, Lcnf;->a(Ljava/lang/CharSequence;)V

    .line 4
    sget-object v0, Land;->ag:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const-class v0, Lcnf;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p1

    check-cast p1, Lcnf;

    invoke-virtual {p1}, Lcnf;->a()Landroid/widget/TextView;

    move-result-object p1

    sget-object v0, Land;->ag:Lccv;

    .line 6
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lbc;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lbc;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lbc;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x20

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public abstract d()Lbcs;
.end method
