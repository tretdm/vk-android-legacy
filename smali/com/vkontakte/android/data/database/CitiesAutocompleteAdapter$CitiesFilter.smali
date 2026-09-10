.class Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;
.super Landroid/widget/Filter;
.source "CitiesAutocompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CitiesFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;-><init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;)Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    return-object v0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$0(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 112
    .local v0, "res":Landroid/widget/Filter$FilterResults;
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$1(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$2(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$1(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1, v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$3(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/Runnable;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$4(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$4(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1, v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$5(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Lcom/vkontakte/android/APIRequest;)V

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "query":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$2(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    new-instance v3, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;-><init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$3(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/Runnable;)V

    .line 131
    const-wide/16 v4, 0x1f4

    .line 126
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void
.end method
