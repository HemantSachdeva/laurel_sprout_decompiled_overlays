.class Lcom/android/systemui/qs/customize/QSCustomizer$1;
.super Ljava/lang/Object;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void
.end method
