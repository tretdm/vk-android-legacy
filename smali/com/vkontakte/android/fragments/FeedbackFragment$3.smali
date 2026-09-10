.class Lcom/vkontakte/android/fragments/FeedbackFragment$3;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

.field private final synthetic val$optsVals:[Ljava/lang/String;

.field private final synthetic val$vals:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FeedbackFragment;[Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->val$vals:[Z

    iput-object p3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->val$optsVals:[Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "sett":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->val$vals:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "notifications_filter"

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$0(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/NotificationsView;->refresh()V

    .line 171
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->val$vals:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->val$optsVals:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
