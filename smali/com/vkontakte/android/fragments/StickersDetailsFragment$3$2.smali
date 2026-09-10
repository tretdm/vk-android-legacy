.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$300(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)I

    move-result v1

    invoke-static {v1}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v0

    .line 142
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$500(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    .line 144
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$602(Lcom/vkontakte/android/fragments/StickersDetailsFragment;Z)Z

    .line 146
    :cond_0
    return-void
.end method
