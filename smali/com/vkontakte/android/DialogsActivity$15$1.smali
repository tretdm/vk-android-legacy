.class Lcom/vkontakte/android/DialogsActivity$15$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DialogsActivity$15;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity$15;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$15$1;->this$1:Lcom/vkontakte/android/DialogsActivity$15;

    iput p2, p0, Lcom/vkontakte/android/DialogsActivity$15$1;->val$uid:I

    .line 929
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 931
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 938
    :goto_0
    return-void

    .line 931
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 932
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v3, p0, Lcom/vkontakte/android/DialogsActivity$15$1;->val$uid:I

    if-ne v2, v3, :cond_0

    .line 933
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 934
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$15$1;->this$1:Lcom/vkontakte/android/DialogsActivity$15;

    invoke-static {v1}, Lcom/vkontakte/android/DialogsActivity$15;->access$0(Lcom/vkontakte/android/DialogsActivity$15;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    goto :goto_0
.end method
