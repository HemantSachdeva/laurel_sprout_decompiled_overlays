.class public final synthetic Lamr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamr;->a:Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lamr;->a:Lcom/google/android/apps/pixelmigrate/component/FlowChoiceActivity;

    new-instance v1, Lalj;

    invoke-direct {v1}, Lalj;-><init>()V

    invoke-virtual {v0, v1}, Lamo;->b(Lba;)V

    return-void
.end method
