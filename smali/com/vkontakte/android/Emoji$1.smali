.class final Lcom/vkontakte/android/Emoji$1;
.super Ljava/lang/Object;
.source "Emoji.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Emoji;->loadPage(I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$toInvalidate:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vkontakte/android/Emoji$1;->val$toInvalidate:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v2, p0, Lcom/vkontakte/android/Emoji$1;->val$toInvalidate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;

    .line 145
    .local v0, "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->invalidateSelf()V

    goto :goto_0

    .line 149
    .end local v0    # "ed":Lcom/vkontakte/android/Emoji$EmojiDrawable;
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Emoji;->access$000(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    return-void

    .line 150
    :catch_0
    move-exception v2

    goto :goto_1
.end method
