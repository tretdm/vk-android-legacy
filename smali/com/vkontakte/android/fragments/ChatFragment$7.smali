.class Lcom/vkontakte/android/fragments/ChatFragment$7;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/EmojiPopup$StickerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSelected(Lcom/vkontakte/android/StickerAttachment;)V
    .locals 1
    .param p1, "sticker"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$7;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3700(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/StickerAttachment;)V

    .line 693
    return-void
.end method
