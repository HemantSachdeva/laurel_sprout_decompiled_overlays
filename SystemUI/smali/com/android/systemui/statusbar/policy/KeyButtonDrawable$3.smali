.class Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$3;
.super Ljava/lang/Object;
.source "KeyButtonDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
