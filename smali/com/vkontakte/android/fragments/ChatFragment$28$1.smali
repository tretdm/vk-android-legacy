.class Lcom/vkontakte/android/fragments/ChatFragment$28$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$28;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$28;->val$actionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1441
    return-void
.end method
