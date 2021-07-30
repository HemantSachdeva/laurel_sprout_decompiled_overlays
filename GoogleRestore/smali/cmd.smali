.class public final Lcmd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmb;


# instance fields
.field public final a:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field public final b:Landroid/view/Window;

.field public final c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcmd;->d:I

    iput-object p1, p0, Lcmd;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    iput-object p2, p0, Lcmd;->b:Landroid/view/Window;

    check-cast p1, Lckz;

    .line 1
    invoke-virtual {p1}, Lckz;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcmd;->c:Z

    return-void
.end method
