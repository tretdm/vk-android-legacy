.class Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;
.super Ljava/lang/Object;
.source "CitiesAutocompleteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

.field final synthetic val$res:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iput-object p2, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$600(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v2, v2, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$700(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkontakte/android/data/database/City;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->val$q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$800(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v1, v1, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$800(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$902(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->notifyDataSetChanged()V

    .line 163
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$1000(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v1, v1, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$1000(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$902(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
