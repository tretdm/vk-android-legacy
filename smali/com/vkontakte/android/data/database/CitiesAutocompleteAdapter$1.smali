.class Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;
.super Ljava/lang/Object;
.source "CitiesAutocompleteAdapter.java"

# interfaces
.implements Lcom/vkontakte/android/api/DatabaseGetCities$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->loadSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 170
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/database/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/database/City;>;"
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$300(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1$1;-><init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method
