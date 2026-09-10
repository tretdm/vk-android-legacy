.class Lcom/vkontakte/android/mediapicker/entries/ImageEntry$2;
.super Ljava/lang/Object;
.source "ImageEntry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getComparator()Ljava/util/Comparator;
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
        "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I
    .locals 2
    .param p1, "a"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "b"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 459
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getDateTaken()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getDateTaken()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    check-cast p2, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry$2;->compare(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I

    move-result v0

    return v0
.end method
