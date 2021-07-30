.class public final synthetic Lana;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;

.field private final b:Lalv;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;Lalv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lana;->a:Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;

    iput-object p2, p0, Lana;->b:Lalv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lana;->a:Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;

    iget-object v1, p0, Lana;->b:Lalv;

    invoke-virtual {v0, v1}, Lamo;->b(Lba;)V

    return-void
.end method
