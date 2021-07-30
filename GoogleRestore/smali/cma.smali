.class public final Lcma;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/CharSequence;

.field public c:Z

.field public d:I

.field public e:Landroid/view/View$OnClickListener;

.field public f:Lclx;

.field private final g:Landroid/view/View$OnClickListener;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcma;->c:Z

    const/4 v1, 0x0

    iput v1, p0, Lcma;->h:I

    .line 1
    sget-object v2, Lcla;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcma;->b:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    iput-object p2, p0, Lcma;->g:Landroid/view/View$OnClickListener;

    .line 3
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    const/16 v0, 0x8

    if-gt p2, v0, :cond_0

    .line 4
    iput p2, p0, Lcma;->a:I

    .line 5
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcma;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "Not a ButtonType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcma;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcma;->h:I

    iput-object p1, p0, Lcma;->b:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcma;->g:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcma;->a:I

    iput p4, p0, Lcma;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 6

    .line 7
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 8
    const-string v1, "_text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcma;->b:Ljava/lang/CharSequence;

    .line 9
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x31

    .line 11
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "%s\u2026"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v1, "_type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcma;->a:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "OTHER"

    goto :goto_0

    .line 13
    :pswitch_0
    const-string v2, "STOP"

    goto :goto_0

    :pswitch_1
    const-string v2, "SKIP"

    goto :goto_0

    :pswitch_2
    const-string v2, "OPT_IN"

    goto :goto_0

    :pswitch_3
    const-string v2, "NEXT"

    goto :goto_0

    :pswitch_4
    const-string v2, "DONE"

    goto :goto_0

    :pswitch_5
    const-string v2, "CLEAR"

    goto :goto_0

    :pswitch_6
    const-string v2, "CANCEL"

    goto :goto_0

    :pswitch_7
    const-string v2, "ADD_ANOTHER"

    .line 12
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v1, "_onClickCount"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcma;->h:I

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcma;->c:Z

    iget-object v0, p0, Lcma;->f:Lclx;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lclx;->b:Lcly;

    iget-object v1, v1, Lcly;->b:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget v2, v0, Lclx;->a:I

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, v0, Lclx;->b:Lcly;

    iget-boolean v2, p1, Lcly;->a:Z

    if-eqz v2, :cond_1

    iget v0, v0, Lclx;->a:I

    iget v2, p1, Lcly;->e:I

    if-ne v0, v2, :cond_0

    .line 17
    sget-object v0, Lclu;->w:Lclu;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lclu;->y:Lclu;

    .line 19
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcly;->a(Landroid/widget/Button;Lclu;)V

    return-void

    .line 18
    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcma;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcma;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcma;->h:I

    .line 14
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
