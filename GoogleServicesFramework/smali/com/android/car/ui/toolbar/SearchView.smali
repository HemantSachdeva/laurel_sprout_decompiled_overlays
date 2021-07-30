.class public Lcom/android/car/ui/toolbar/SearchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SearchView.java"


# instance fields
.field private final mCloseIcon:Landroid/view/View;

.field private final mEndPadding:I

.field private final mIcon:Landroid/widget/ImageView;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsPlainText:Z

.field private mSearchCompletedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchText:Landroid/widget/EditText;

.field private final mStartPadding:I

.field private final mStartPaddingWithoutIcon:I

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mWasShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/toolbar/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/toolbar/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchListeners:Ljava/util/Set;

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchCompletedListeners:Ljava/util/Set;

    .line 55
    new-instance p2, Lcom/android/car/ui/toolbar/SearchView$1;

    invoke-direct {p2, p0}, Lcom/android/car/ui/toolbar/SearchView$1;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 p2, 0x0

    .line 70
    iput-boolean p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mIsPlainText:Z

    .line 128
    iput-boolean p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mWasShown:Z

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "input_method"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 87
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_toolbar_search_view:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_search_bar:I

    invoke-static {p0, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    .line 90
    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_search_icon:I

    invoke-static {p0, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    .line 91
    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_search_close:I

    invoke-static {p0, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    .line 93
    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$X_FGZTNuIRv-v80Y2K7F5FfOzQE;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$X_FGZTNuIRv-v80Y2K7F5FfOzQE;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getPaddingStart()I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPaddingWithoutIcon:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/car/ui/R$dimen;->car_ui_toolbar_search_search_icon_container_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPadding:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/car/ui/R$dimen;->car_ui_toolbar_search_close_icon_container_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    .line 102
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 103
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPadding:I

    iget v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    invoke-virtual {p1, p3, p2, v0, p2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 105
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    new-instance p2, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$X7fsaGo_U9eNegbbmVXAWpIsYEw;

    invoke-direct {p2, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$X7fsaGo_U9eNegbbmVXAWpIsYEw;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    new-instance p2, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$FG6VZSqwor2f82_F3UfmTiH0ZHc;

    invoke-direct {p2, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$FG6VZSqwor2f82_F3UfmTiH0ZHc;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/toolbar/SearchView;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/SearchView;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 120
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchCompletedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;

    .line 121
    invoke-interface {p1}, Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;->onSearchCompleted()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private onSearch(Ljava/lang/String;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;

    .line 230
    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;->onSearch(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SearchView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/SearchView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$SearchView(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/toolbar/SearchView;->lambda$new$1(Landroid/view/View;Z)V

    return-void
.end method

.method public synthetic lambda$new$2$SearchView(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/toolbar/SearchView;->lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 132
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 135
    iget-boolean p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mWasShown:Z

    if-nez p2, :cond_2

    .line 136
    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 140
    :cond_2
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mWasShown:Z

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    sget p1, Lcom/android/car/ui/R$drawable;->car_ui_icon_search:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPlainText(Z)V
    .locals 4

    .line 209
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIsPlainText:Z

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPaddingWithoutIcon:I

    iget v3, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 212
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 213
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPadding:I

    iget v3, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 216
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 217
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :goto_0
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mIsPlainText:Z

    .line 222
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setSearchCompletedListeners(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;",
            ">;)V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchCompletedListeners:Ljava/util/Set;

    return-void
.end method

.method public setSearchListeners(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;",
            ">;)V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchListeners:Ljava/util/Set;

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
