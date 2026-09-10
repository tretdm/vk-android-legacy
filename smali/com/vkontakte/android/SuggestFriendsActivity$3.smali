.class Lcom/vkontakte/android/SuggestFriendsActivity$3;
.super Ljava/lang/Object;
.source "SuggestFriendsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGetByPhones$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestFriendsActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestFriendsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$3;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public success(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$3;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$3;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/SuggestFriendsActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$3;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->updateList()V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$3;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$2(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    return-void
.end method
