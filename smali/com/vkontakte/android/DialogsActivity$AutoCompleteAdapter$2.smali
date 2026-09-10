.class Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;
.super Landroid/widget/Filter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;->this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    .line 1189
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, -0x1

    .line 1192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 1195
    .local v2, "p1":Lcom/vkontakte/android/UserProfile;
    iput v11, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 1198
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1199
    .local v4, "sstr":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;->this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    iput-object v9, v10, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->lastSearchRequest:Ljava/lang/String;

    .line 1200
    move-object v6, v4

    .local v6, "sstr_translit1":Ljava/lang/String;
    move-object v7, v4

    .line 1201
    .local v7, "sstr_translit2":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->access$7()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lt v1, v9, :cond_5

    .line 1206
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v5, v7

    .line 1209
    .local v5, "sstr_translit":Ljava/lang/String;
    :goto_3
    sget-object v9, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-eqz v9, :cond_2

    .line 1210
    sget-object v9, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1216
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1217
    sget-object v9, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1226
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1230
    .local v0, "filterResults":Landroid/widget/Filter$FilterResults;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 1231
    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1232
    return-object v0

    .line 1198
    .end local v0    # "filterResults":Landroid/widget/Filter$FilterResults;
    .end local v1    # "i":I
    .end local v4    # "sstr":Ljava/lang/String;
    .end local v5    # "sstr_translit":Ljava/lang/String;
    .end local v6    # "sstr_translit1":Ljava/lang/String;
    .end local v7    # "sstr_translit2":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_0

    .line 1199
    .restart local v4    # "sstr":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 1202
    .restart local v1    # "i":I
    .restart local v6    # "sstr_translit1":Ljava/lang/String;
    .restart local v7    # "sstr_translit2":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->access$7()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->access$8()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1203
    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->access$8()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1204
    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->access$8()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->access$7()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1201
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1207
    :cond_7
    move-object v5, v6

    .restart local v5    # "sstr_translit":Ljava/lang/String;
    goto :goto_3

    .line 1210
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 1211
    .local v8, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_0

    .line 1212
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1217
    .end local v8    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 1218
    .restart local v8    # "u":Lcom/vkontakte/android/UserProfile;
    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_1

    .line 1219
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 1237
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;->this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1239
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;->this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    iget-object v1, v0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1241
    :cond_0
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_2

    .line 1242
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;->this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 1247
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;->this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->access$1(Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/DialogsActivity;->access$9(Lcom/vkontakte/android/DialogsActivity;Ljava/lang/String;)V

    .line 1248
    :cond_1
    return-void

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$2;->this$1:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
