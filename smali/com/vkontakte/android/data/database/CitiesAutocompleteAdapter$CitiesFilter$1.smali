.class Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;
.super Ljava/lang/Object;
.source "CitiesAutocompleteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

.field private final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    iput-object p2, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->val$query:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    invoke-static {v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->access$1(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;)Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$3(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/Runnable;)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->this$1:Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    invoke-static {v0}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->access$1(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;)Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->val$query:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;->access$6(Lcom/vkontakte/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)V

    .line 130
    return-void
.end method
