.class Lcom/vkontakte/android/StickerManagerActivity$3;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerManagerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$3;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$3;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$500(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$3;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$600(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$3;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$700(Lcom/vkontakte/android/StickerManagerActivity;)V

    .line 131
    return-void
.end method
