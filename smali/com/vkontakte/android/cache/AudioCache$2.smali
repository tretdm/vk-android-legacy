.class Lcom/vkontakte/android/cache/AudioCache$2;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/AudioCache;->endPlayback(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vkontakte/android/cache/AudioCache$FileRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/vkontakte/android/cache/AudioCache$FileRange;Lcom/vkontakte/android/cache/AudioCache$FileRange;)I
    .locals 2
    .param p1, "lhs"    # Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .param p2, "rhs"    # Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .prologue
    .line 332
    iget v0, p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    iget v1, p2, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    check-cast p2, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/cache/AudioCache$2;->compare(Lcom/vkontakte/android/cache/AudioCache$FileRange;Lcom/vkontakte/android/cache/AudioCache$FileRange;)I

    move-result v0

    return v0
.end method
