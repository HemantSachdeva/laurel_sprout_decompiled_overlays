.class public final Lajp;
.super Lajh;
.source "PG"


# instance fields
.field public Z:Lcma;

.field private aa:Lajo;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lajh;-><init>()V

    return-void
.end method

.method public static b(Ladc;Ljava/lang/String;)Lajp;
    .locals 1

    new-instance v0, Lajp;

    .line 3
    invoke-direct {v0}, Lajp;-><init>()V

    .line 4
    invoke-static {p0, p1}, Lajp;->a(Ladc;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lba;->d(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private final k()V
    .locals 3

    iget-object v0, p0, Lajp;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lajp;->aa:Lajo;

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lajp;->c:Landroid/widget/EditText;

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lajp;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lajp;->aa:Lajo;

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lajp;->c:Landroid/widget/EditText;

    .line 40
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 41
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lajp;->c:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v0, p0, Lajp;->Z:Lcma;

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcma;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 14
    const v0, 0x7f0d0062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 15
    move-object p2, p1

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lajh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;Ljava/lang/CharSequence;)V

    .line 16
    const v0, 0x7f0a00d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lajp;->d:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f0a00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lajp;->c:Landroid/widget/EditText;

    const-class v0, Lcly;

    .line 18
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcly;

    new-instance v0, Lajo;

    .line 19
    invoke-direct {v0, p0}, Lajo;-><init>(Lajp;)V

    iput-object v0, p0, Lajp;->aa:Lajo;

    iget-object v0, p0, Lajp;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lajp;->b:Ladc;

    .line 20
    sget-object v2, Ladc;->a:Ladc;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    .line 31
    :cond_0
    const/16 v1, 0x81

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lajp;->c:Landroid/widget/EditText;

    new-instance v1, Lajl;

    .line 22
    invoke-direct {v1, p0}, Lajl;-><init>(Lajp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110039

    .line 24
    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Lajm;

    invoke-direct {v1, p0}, Lajm;-><init>(Lajp;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x2

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a5

    iput v1, v0, Lclz;->d:I

    .line 25
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Lcly;->b(Lcma;)V

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11003a

    .line 28
    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Lajn;

    invoke-direct {v1, p0}, Lajn;-><init>(Lajp;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a4

    iput v1, v0, Lclz;->d:I

    .line 29
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 30
    invoke-virtual {p2, v0}, Lcly;->a(Lcma;)V

    iget-object p2, p2, Lcly;->c:Lcma;

    iput-object p2, p0, Lajp;->Z:Lcma;

    .line 31
    invoke-direct {p0}, Lajp;->k()V

    return-object p1
.end method

.method public final a(Lauu;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lajp;->k()V

    .line 33
    invoke-virtual {p0, p1}, Lajh;->b(Lauu;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lajp;->d:Landroid/widget/TextView;

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lajp;->d:Landroid/widget/TextView;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lajp;->d:Landroid/widget/TextView;

    .line 36
    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Ladc;)V
    .locals 3

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sget-object v1, Land;->P:Lccv;

    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    sget-object p1, Lauu;->c:Lauu;

    invoke-virtual {p0, p1}, Lajp;->a(Lauu;)V

    return-void

    :cond_0
    iget-object v0, p0, Lajp;->Z:Lcma;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcma;->a(Z)V

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 8
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lajp;->c:Landroid/widget/EditText;

    .line 9
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 11
    :cond_1
    sget-object v0, Ladc;->a:Ladc;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lajp;->a:Lajg;

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lajg;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lajp;->a:Lajg;

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lajg;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Lbcs;
    .locals 1

    .line 2
    sget-object v0, Lbcs;->P:Lbcs;

    return-object v0
.end method
