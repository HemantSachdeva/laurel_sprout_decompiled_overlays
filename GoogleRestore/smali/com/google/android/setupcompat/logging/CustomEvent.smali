.class public final Lcom/google/android/setupcompat/logging/CustomEvent;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/setupcompat/logging/MetricKey;

.field public final c:Landroid/os/PersistableBundle;

.field public final d:Landroid/os/PersistableBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lclq;

    invoke-direct {v0}, Lclq;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    const-string v3, "Timestamp cannot be negative."

    invoke-static {v2, v3}, Lcln;->a(ZLjava/lang/String;)V

    .line 2
    const-string v2, "MetricKey cannot be null."

    invoke-static {p3, v2}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v2, "Bundle cannot be null."

    invoke-static {p4, v2}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p4}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "Bundle cannot be empty."

    invoke-static {v2, v3}, Lcln;->a(ZLjava/lang/String;)V

    .line 5
    const-string v2, "piiValues cannot be null."

    invoke-static {p5, v2}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    .line 7
    const-string v5, "bundle key"

    const/16 v6, 0x32

    invoke-static {v3, v5, v4, v6}, Lcls;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 8
    invoke-virtual {p4, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 10
    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 10
    :cond_2
    const/4 v4, 0x0

    .line 11
    :goto_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    .line 13
    const-string v3, "Maximum length of string value for key=\'%s\' cannot exceed %s."

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v4, v3}, Lcln;->a(ZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    iput-wide p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->a:J

    iput-object p3, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->b:Lcom/google/android/setupcompat/logging/MetricKey;

    new-instance p1, Landroid/os/PersistableBundle;

    .line 14
    invoke-direct {p1, p4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->c:Landroid/os/PersistableBundle;

    new-instance p1, Landroid/os/PersistableBundle;

    .line 15
    invoke-direct {p1, p5}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->d:Landroid/os/PersistableBundle;

    return-void
.end method

.method public static a(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;
    .locals 11

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v4, "The constructor only support on sdk Q or higher."

    invoke-static {v0, v4}, Lcln;->a(ZLjava/lang/String;)V

    .line 17
    sget-object v10, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_1
    const-string v0, "The constructor only support on sdk Q or higher"

    invoke-static {v1, v0}, Lcln;->a(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/setupcompat/logging/CustomEvent;

    .line 19
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 21
    invoke-static {p1}, Lclh;->b(Landroid/os/PersistableBundle;)V

    .line 22
    invoke-static {v10}, Lclh;->b(Landroid/os/PersistableBundle;)V

    move-object v5, v0

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/setupcompat/logging/CustomEvent;-><init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 24
    :cond_1
    check-cast p1, Lcom/google/android/setupcompat/logging/CustomEvent;

    iget-wide v3, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->a:J

    .line 25
    iget-wide v5, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->b:Lcom/google/android/setupcompat/logging/MetricKey;

    iget-object v3, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->b:Lcom/google/android/setupcompat/logging/MetricKey;

    .line 26
    invoke-static {v1, v3}, Lcme;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->c:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->c:Landroid/os/PersistableBundle;

    .line 27
    invoke-static {v1, v3}, Lclh;->a(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->d:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->d:Landroid/os/PersistableBundle;

    .line 28
    invoke-static {v1, p1}, Lclh;->a(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->a:J

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->b:Lcom/google/android/setupcompat/logging/MetricKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->c:Landroid/os/PersistableBundle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->d:Landroid/os/PersistableBundle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->a:J

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->b:Lcom/google/android/setupcompat/logging/MetricKey;

    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->c:Landroid/os/PersistableBundle;

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object p2, p0, Lcom/google/android/setupcompat/logging/CustomEvent;->d:Landroid/os/PersistableBundle;

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
