.class Lcom/vkontakte/android/fragments/SuggestionsFragment$3;
.super Ljava/lang/Object;
.source "SuggestionsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/SetSubscriptionStatus$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFragment;->onSubscribeClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

.field private final synthetic val$needSubscribe:Z

.field private final synthetic val$p:Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFragment;Lcom/vkontakte/android/UserProfile;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->val$p:Lcom/vkontakte/android/UserProfile;

    iput-boolean p3, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->val$needSubscribe:Z

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->val$p:Lcom/vkontakte/android/UserProfile;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->val$needSubscribe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, v2, Lcom/vkontakte/android/UserProfile;->online:I

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->access$2(Lcom/vkontakte/android/fragments/SuggestionsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f08006b

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const v0, 0x7f080068

    goto :goto_1
.end method

.method public success(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->val$p:Lcom/vkontakte/android/UserProfile;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFragment$3;->val$needSubscribe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 167
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
