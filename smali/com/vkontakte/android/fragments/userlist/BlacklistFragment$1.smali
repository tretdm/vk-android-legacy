.class Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$1;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 26
    .local v0, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$1;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->access$000(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;Lcom/vkontakte/android/UserProfile;)V

    .line 27
    return-void
.end method
