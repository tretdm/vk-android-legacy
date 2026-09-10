.class Lcom/vkontakte/android/StickerManagerActivity$1$1;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerManagerActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/StickerManagerActivity$1;

.field private final synthetic val$pack:Lcom/vkontakte/android/data/StickerPack;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerManagerActivity$1;Lcom/vkontakte/android/data/StickerPack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$1$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$1;

    iput-object p2, p0, Lcom/vkontakte/android/StickerManagerActivity$1$1;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$1$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$1;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity$1;->access$0(Lcom/vkontakte/android/StickerManagerActivity$1;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity$1$1;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$1(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/data/StickerPack;Z)V

    .line 62
    return-void
.end method
