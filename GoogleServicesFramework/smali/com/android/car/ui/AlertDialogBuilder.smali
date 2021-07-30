.class public Lcom/android/car/ui/AlertDialogBuilder;
.super Ljava/lang/Object;
.source "AlertDialogBuilder.java"


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconTinted:Z

.field private mNegativeButtonSet:Z

.field private mNeutralButtonSet:Z

.field private mPositiveButtonSet:Z

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/AlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 71
    iput-object p1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$prepareDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private prepareDialog()V
    .locals 7

    .line 641
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$layout;->car_ui_alert_dialog_title_with_subtitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 644
    sget v1, Lcom/android/car/ui/R$id;->car_ui_alert_title:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 645
    sget v2, Lcom/android/car/ui/R$id;->car_ui_alert_subtitle:I

    .line 646
    invoke-static {v0, v2}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 647
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 648
    sget v3, Lcom/android/car/ui/R$id;->car_ui_alert_icon:I

    invoke-static {v0, v3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 650
    iget-object v4, p0, Lcom/android/car/ui/AlertDialogBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v4, p0, Lcom/android/car/ui/AlertDialogBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    iget-boolean v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mIconTinted:Z

    if-eqz v1, :cond_3

    .line 657
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/car/ui/R$color;->car_ui_dialog_icon_color:I

    .line 658
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 657
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 660
    :cond_3
    iget-object v1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 662
    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mNeutralButtonSet:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mNegativeButtonSet:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mPositiveButtonSet:Z

    if-nez v0, :cond_4

    .line 663
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/car/ui/R$string;->car_ui_alert_dialog_default_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    iget-object p0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$ZoAyUi43EP675R0Los9Z7-Rvdzk;->INSTANCE:Lcom/android/car/ui/-$$Lambda$AlertDialogBuilder$ZoAyUi43EP675R0Los9Z7-Rvdzk;

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    return-void
.end method

.method private setCustomList(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;)V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/car/ui/R$layout;->car_ui_alert_dialog_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    sget v1, Lcom/android/car/ui/R$id;->list:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 373
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 374
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 375
    iget-object p0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    .line 679
    invoke-direct {p0}, Lcom/android/car/ui/AlertDialogBuilder;->prepareDialog()V

    .line 680
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 687
    new-instance v2, Lcom/android/car/ui/FocusParkingView;

    iget-object p0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/car/ui/FocusParkingView;-><init>(Landroid/content/Context;)V

    .line 688
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public setAdapter(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;)Lcom/android/car/ui/AlertDialogBuilder;
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lcom/android/car/ui/AlertDialogBuilder;->setCustomList(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/car/ui/AlertDialogBuilder;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/android/car/ui/AlertDialogBuilder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/AlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/car/ui/AlertDialogBuilder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/car/ui/AlertDialogBuilder;
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/android/car/ui/AlertDialogBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 94
    iget-object v0, p0, Lcom/android/car/ui/AlertDialogBuilder;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 0

    .line 698
    invoke-virtual {p0}, Lcom/android/car/ui/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 699
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-object p0
.end method
