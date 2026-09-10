.class Lcom/vkontakte/android/CheckInActivity$10;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PlacesSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CheckInActivity;->loadData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;

.field private final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    iput-object p2, p0, Lcom/vkontakte/android/CheckInActivity$10;->val$q:Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$19(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 411
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/GeoPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "_places":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/GeoPlace;>;"
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$19(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 397
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->val$q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$18(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->val$q:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$9(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$15(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$10;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$17(Lcom/vkontakte/android/CheckInActivity;)V

    .line 405
    return-void
.end method
