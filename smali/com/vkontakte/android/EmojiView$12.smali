.class Lcom/vkontakte/android/EmojiView$12;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->updateRecents()V
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
        "Lcom/vkontakte/android/EmojiView$RecentItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$12;->this$0:Lcom/vkontakte/android/EmojiView;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vkontakte/android/EmojiView$RecentItem;Lcom/vkontakte/android/EmojiView$RecentItem;)I
    .locals 2
    .param p1, "lhs"    # Lcom/vkontakte/android/EmojiView$RecentItem;
    .param p2, "rhs"    # Lcom/vkontakte/android/EmojiView$RecentItem;

    .prologue
    .line 746
    iget v0, p1, Lcom/vkontakte/android/EmojiView$RecentItem;->count:F

    iget v1, p2, Lcom/vkontakte/android/EmojiView$RecentItem;->count:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/vkontakte/android/EmojiView$RecentItem;->count:F

    iget v1, p2, Lcom/vkontakte/android/EmojiView$RecentItem;->count:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/EmojiView$RecentItem;

    check-cast p2, Lcom/vkontakte/android/EmojiView$RecentItem;

    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/EmojiView$12;->compare(Lcom/vkontakte/android/EmojiView$RecentItem;Lcom/vkontakte/android/EmojiView$RecentItem;)I

    move-result v0

    return v0
.end method
