.class final Lcjw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/widget/AutoCompleteTextView;

.field final synthetic b:Lcjz;


# direct methods
.method public constructor <init>(Lcjz;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcjw;->b:Lcjz;

    iput-object p2, p0, Lcjw;->a:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcjw;->b:Lcjz;

    .line 2
    invoke-virtual {p1}, Lcjz;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcjw;->b:Lcjz;

    iput-boolean p2, p1, Lcjz;->d:Z

    :cond_0
    iget-object p1, p0, Lcjw;->b:Lcjz;

    iget-object v0, p0, Lcjw;->a:Landroid/widget/AutoCompleteTextView;

    .line 3
    invoke-virtual {p1, v0}, Lcjz;->a(Landroid/widget/AutoCompleteTextView;)V

    :cond_1
    return p2
.end method
