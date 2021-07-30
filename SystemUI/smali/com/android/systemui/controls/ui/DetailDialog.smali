.class public final Lcom/android/systemui/controls/ui/DetailDialog;
.super Landroid/app/Dialog;
.source "DetailDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetailDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetailDialog.kt\ncom/android/systemui/controls/ui/DetailDialog\n*L\n1#1,141:1\n*E\n"
.end annotation


# instance fields
.field private activityView:Landroid/app/ActivityView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final intent:Landroid/content/Intent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stateCallback:Landroid/app/ActivityView$StateCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Control_DetailPanel:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    .line 52
    new-instance p1, Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, v1}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    .line 54
    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Landroid/app/ActivityView$StateCallback;

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 75
    sget p1, Lcom/android/systemui/R$layout;->controls_detail_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 77
    sget p1, Lcom/android/systemui/R$id;->controls_activity_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 78
    iget-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    sget p1, Lcom/android/systemui/R$id;->control_detail_close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 82
    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget p1, Lcom/android/systemui/R$id;->control_detail_open_in_app:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 86
    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$2;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$4;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 106
    sget p1, Lcom/android/systemui/R$id;->control_detail_root:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 108
    iget-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    sget v1, Lcom/android/systemui/R$dimen;->controls_activity_view_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string v1, "systemui.controls_panel_top_offset"

    .line 111
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 113
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$3;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/DetailDialog$$special$$inlined$apply$lambda$4;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 123
    sget p2, Lcom/android/systemui/R$dimen;->controls_activity_view_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 124
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->setCornerRadius(F)V

    :cond_0
    return-void

    .line 118
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->release()V

    .line 138
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final getActivityView()Landroid/app/ActivityView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public show()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Landroid/app/ActivityView;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setCallback(Landroid/app/ActivityView$StateCallback;)V

    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
