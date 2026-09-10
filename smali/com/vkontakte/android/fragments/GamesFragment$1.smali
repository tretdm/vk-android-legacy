.class Lcom/vkontakte/android/fragments/GamesFragment$1;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$1;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    .local v0, "idx":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$1;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$1;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/GameRequest;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/GamesFragment;->access$100(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/data/GameRequest;)V

    .line 70
    return-void
.end method
