.class Lcom/vkontakte/android/StickerManagerActivity$1;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/StickerManagerActivity;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$1;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/StickerManagerActivity$1;)Lcom/vkontakte/android/StickerManagerActivity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$1;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 51
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$1;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 52
    .local v0, "activate":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$1;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v3, v1, v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$1(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/data/StickerPack;Z)V

    .line 67
    :goto_1
    return-void

    .end local v0    # "activate":Z
    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    .line 55
    .restart local v0    # "activate":Z
    :cond_1
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$1;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 57
    const v3, 0x7f080341

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 58
    const v3, 0x7f08004e

    new-instance v4, Lcom/vkontakte/android/StickerManagerActivity$1$1;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/StickerManagerActivity$1$1;-><init>(Lcom/vkontakte/android/StickerManagerActivity$1;Lcom/vkontakte/android/data/StickerPack;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 64
    const v3, 0x7f08004f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
