.class Lcom/vkontakte/android/fragments/PostViewFragment$5;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/EmojiPopup$StickerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSelected(Lcom/vkontakte/android/StickerAttachment;)V
    .locals 1
    .param p1, "sticker"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$400(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/StickerAttachment;)V

    .line 297
    return-void
.end method
