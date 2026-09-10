.class Lcom/vkontakte/android/StoreActivity$1$2;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/StoreActivity$1;

.field private final synthetic val$pck:Lcom/vkontakte/android/data/StickerPack;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity$1;Lcom/vkontakte/android/data/StickerPack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$1$2;->this$1:Lcom/vkontakte/android/StoreActivity$1;

    iput-object p2, p0, Lcom/vkontakte/android/StoreActivity$1$2;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$1$2;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget v0, v0, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v0}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$1$2;->this$1:Lcom/vkontakte/android/StoreActivity$1;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$1;->access$0(Lcom/vkontakte/android/StoreActivity$1;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/StoreActivity$1$2;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    invoke-static {v0, v1}, Lcom/vkontakte/android/StoreActivity;->access$1(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/data/StickerPack;)V

    .line 81
    :cond_0
    return-void
.end method
