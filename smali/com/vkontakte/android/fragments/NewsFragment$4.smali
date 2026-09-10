.class Lcom/vkontakte/android/fragments/NewsFragment$4;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;Landroid/app/Activity;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/NewsFragment$4;)Lcom/vkontakte/android/fragments/NewsFragment;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCache;->getLists()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->val$act:Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$4$1;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->val$act:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4;->val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/fragments/NewsFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/NewsFragment$4;Landroid/app/Activity;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method
