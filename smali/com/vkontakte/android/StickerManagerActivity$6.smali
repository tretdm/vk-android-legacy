.class Lcom/vkontakte/android/StickerManagerActivity$6;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/StoreReorderProducts$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerManagerActivity;->sendReorder(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerManagerActivity;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;I)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$6;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    iput p2, p0, Lcom/vkontakte/android/StickerManagerActivity$6;->val$item:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$6;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$1402(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$6;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    new-instance v1, Lcom/vkontakte/android/StickerManagerActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/StickerManagerActivity$6$1;-><init>(Lcom/vkontakte/android/StickerManagerActivity$6;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StickerManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$6;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$1402(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$6;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$1100(Lcom/vkontakte/android/StickerManagerActivity;)V

    .line 238
    return-void
.end method
